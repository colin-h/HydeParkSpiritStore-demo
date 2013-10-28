module ApplicationHelper

  def conditional_html( lang = "en", &block )
    haml_concat Haml::Util::html_safe <<-"HTML".gsub( /^\s+/, '' )
      <!--[if lt IE 7 ]>              <html lang="#{lang}" class="ie6 old-ie"> <![endif]-->
      <!--[if IE 7 ]>                 <html lang="#{lang}" class="ie7 old-ie"> <![endif]-->
      <!--[if IE 8 ]>                 <html lang="#{lang}" class="ie8 old-ie"> <![endif]-->
      <!--[if IE 9 ]>                 <html lang="#{lang}" class="ie9"> <![endif]-->
      <!--[if (gte IE 9)|!(IE)]><!--> <html lang="#{lang}"> <!--<![endif]-->
    HTML
    haml_concat capture( &block ) << Haml::Util::html_safe( "\n</html>" ) if block_given?
  end

  def get_categories
    @categories ||= Category.where(active: true)
  end


  def get_featured
    @products ||= Product.where(featured: true)
  end

  def link_to_back(text, opts = {})
    html_options = opts.except(:or)
    url = request.referrer || opts.delete(:or) || '/'

    link_to text, url, html_options
  end
end
