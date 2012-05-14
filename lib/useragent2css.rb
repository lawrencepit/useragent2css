# encoding: utf-8
require 'useragent2css/version'
module UserAgent

  def self.css(ua)
    ua = (ua||"").downcase
    br = case ua
      when /opera[\/,\s+](\d+)/
        o = %W(opera opera#{$1})
        o << "mobile" if ua.include?('mini')
        o.join(" ")
      when /webtv/ ;              "gecko"
      when /msie (\d)/ ;          "ie ie#{$1}"
      when %r{firefox/2} ;        "gecko ff2"
      when %r{firefox/3.5} ;      "gecko ff3 ff3_5"
      when %r{firefox/3} ;        "gecko ff3"
      when %r{firefox/4} ;        "gecko ff4"
      when /konqueror/ ;          "konqueror"
      when /applewebkit\/([\d.]+).? \([^)]*\) ?(?:version\/(\d+))?.*$/
        o = %W(webkit)
        if ua.include?('iron')
          o << 'iron'
        elsif ua.include?('chrome')
          ua =~ /chrome\/(\d+)/
          o << "chrome chrome#{$1}"
        else
          o << "safari safari"+ ($2 || (($1.to_i >= 400) ? '2' : '1'))
        end
        o.join(" ")
      when /gecko/, /mozilla/ ;   "gecko"
    end
    br = (br.nil? ? "mobile" : "#{br} mobile") if ua.include?('mobile')
    os = ua.include?('mac') || ua.include?('darwin') ?
           ua.include?('iphone') ? 'iphone' : ua.include?('ipod') ? 'ipod' : ua.include?('ipad') ? 'ipad' : 'mac' :
         ua.include?('x11') || ua.include?('linux') ? 'linux' :
         ua.include?('win') ? 'win' : nil
    "#{br}#{" " unless br.nil? or os.nil?}#{os}"
  end

  def useragent2css(ua = request.env["HTTP_USER_AGENT"])
    UserAgent.css(ua)
  end

end

ActionView::Base.send(:include, UserAgent) if defined?(::ActionView::Base)

