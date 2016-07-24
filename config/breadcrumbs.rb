crumb :root do
  link "Admin Panel", admin_panel_path
end

crumb :admin_panel do
  link "Admin Panel", admin_panel_path
end

crumb :edit_post do |post|
  link "Edit Post", edit_admin_blog_post_path(post)
end

crumb :posts do
  link "Blog Posts", admin_blog_posts_path
end

crumb :new_post do
  parent :posts
  link "New Blog Post", new_admin_blog_post_path
end


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
