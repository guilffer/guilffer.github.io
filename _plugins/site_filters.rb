module Jekyll
  module SiteFilters

    def svg_icon(input)
      File.read("_svg_icons/#{input.strip}.svg")
    end

    def short_talk_link(talk)
      "[#{talk['conf']['name']}](#{talk['talk']['link']})"
    end
  end
end

Liquid::Template.register_filter(Jekyll::SiteFilters)
