# frozen_string_literal: true

# name: discourse-onebox-weibo-video
# about: For generating pretty oneboxes for video.weibo.com
# https://video.h5.weibo.cn/1034:4459699299352603/4459699502527906
# version: 0.3
# authors: dengzi

Onebox = Onebox

# register_asset "javascripts/weibo.js"

module Onebox
  module Engine
     class WeiboVideoOnebox
        include Engine

        always_https
        matches_regexp(/^(https?:\/\/)?video\.(h5\.)?weibo\.(com|cn)\/(.)+\/?$/)

        WIDTH  = 640
        HEIGHT = 420

        def to_html

         "
         <iframe 
           name='wbframe'
           src='#{@url}'
           width='#{WIDTH}'
           height='#{HEIGHT}'
           scrolling='no'
           frameborder='1'
           webkitallowfullscreen
           mozallowfullscreen
           allowfullscreen >
           </iframe>
           " 
        end
     end
  end
end
