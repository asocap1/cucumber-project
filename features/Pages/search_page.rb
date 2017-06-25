class SearchPage < SitePrism::Page
  set_url "/"
  element :search_field, "input[id='lst-ib']"
  element :search_button, "#_fZl"

  def google_search(arg)
    search_field.set arg
    sleep 2
    search_button.click
    sleep 2
  end
end