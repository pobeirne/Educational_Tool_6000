module ApplicationHelper
  
  def site_name
    # Change the value below between the quotes.
    "Project Name"
  end

  def site_url
    if Rails.env.production?
      # Place your production URL in the quotes below
      "https://nameless-chamber-7595.herokuapp.com/"
    else
      # Our dev & test URL
      "http://localhost:3000"
    end
  end

  def meta_author
    # Change the value below between the quotes.
    "Paul OBeirne x10203800"
  end

  def meta_description
    # Change the value below between the quotes.
    "Add your website description here"
  end

  def meta_keywords
    # Change the value below between the quotes.
    "Add your keywords here"
  end

  def title(page_title)
    content_for(:title){ page_title }
    page_title
  end  
end
