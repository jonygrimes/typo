module Admin::CategoriesHelper
  def show_category_actions item
    html = <<-HTML
      <div class='action'>
        <small id="list_#{item.name}">#{link_to_permalink item, pluralize(item.articles.size, _('no articles') , _('1 article'), __('%d articles'))}</small> |
        <small><a id="edit_#{item.name}" href="/admin/categories/edit/#{item.id}">Edit</a></small> |
        <small><a id="delete_#{item.name}" href="/admin/categories/destroy/#{item.id}">Delete</a></small>
    </div>
    HTML
  end

end
