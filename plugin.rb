# frozen_string_literal: true

# name: discourse-onebox-weibo-video
# about: For generating pretty oneboxes for video.weibo.com
# version: 0.1
# authors: dengzi

Onebox = Onebox

module Onebox
  module Engine
     class WeiboVideoOnebox
        include Engine
        include StandardEmbed

        always_https
        matches_regexp(/^(https?:\/\/)?video\.h5\.weibo\.(com|cn)\/(.)+\/?$/)

        WIDTH  ||= 480
        HEIGHT ||= 360

        def to_html

           <<~HTML
           <iframe src="#{@url}"
           width="#{WIDTH}"
           height="#{HEIGHT}"
           frameborder='0'
           allowfullscreen >
           </iframe>

           HTML
        end
     end
  end
end


