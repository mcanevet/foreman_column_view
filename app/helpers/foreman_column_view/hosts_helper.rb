module ForemanColumnView
  module HostsHelper

    def fcv_title
      title = Setting[:column_title] || 'Domain'
      return title
    end 

    def fcv_content(host)
      content = Setting[:column_content] || 'domain'
      if content =~ /(.*)\[(.*)\]/
        return host.send($1)[$2.gsub(/['"]/,'')]
      else
        return host.send(content)
      end
    end 

  end
end
