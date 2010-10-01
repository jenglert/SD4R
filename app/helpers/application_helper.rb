# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def page_title(page_title)
    @page_title = page_title
    
    html = <<-HTML
      <div class="titleContainer">
        <h2 class="title">#{@page_title}</h2>
        <h2 class="titleBack">#{@page_title}</h2>
      </div>
    HTML
    
    html
  end
end
