all :
	@bundle exec jekyll serve & \
	while sh -c "trap 'exit 1' INT; fswatch -1 -E -e \.git -e \.#.* ."; do \
		$(MAKE) thumbnails; \
	done

jekyll :
	bundle install

IMAGES := $(filter-out %_thumbnail_160x120.jpg,$(shell find . -name '*.jpg'))
THUMBNAILS := $(IMAGES:.jpg=_thumbnail_160x120.jpg)

thumbnails : $(THUMBNAILS)

# https://stackoverflow.com/a/13734613
$(THUMBNAILS) : %_thumbnail_160x120.jpg : %.jpg
	if [[ $$(identify $<) =~ ([0-9]+)x([0-9]+) ]]; then \
	    width=$${BASH_REMATCH[1]} && \
	    height=$${BASH_REMATCH[2]} && \
	    let good_width=height+height/3 && \
	    if (( width < good_width )); then \
	        let new_height=width*3/4 && \
	        new_width=$$width && \
	        let top='(height-new_height)/3' && \
	        left=0; \
	    elif (( width != good_width )); then \
	        let new_width=height*4/3 && \
	        new_height=$$height && \
	        let left='(width-new_width)/3' && \
	        top=0; \
	    fi && \
		convert $< -crop "$$new_width"x$$new_height+$$left+$$top -resize 160x120 $@; \
	fi
