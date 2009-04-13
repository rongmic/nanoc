module Nanoc3

  # Nanoc3::LayoutProxy is a proxy object for a layout (Nanoc3::Layout).
  class LayoutProxy < Proxy

    # Requests the layout attribute with the given name. +key+ can be a string
    # or a symbol, and it can contain a trailing question mark (which will be
    # stripped).
    def [](key)
      real_key = key.to_s.sub(/\?$/, '').to_sym

      if real_key == :content
        @obj.content
      elsif real_key == :identifier
        @obj.identifier
      elsif real_key == :mtime
        @obj.mtime
      else
        super(key)
      end
    end

  end

end