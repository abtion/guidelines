# Jekyll plugin to automatically add edit page link to all markdown pages
module Jekyll
  class EditPageLinkGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.pages.each do |page|
        # Only process markdown files that have a path
        next unless page.path && page.path.end_with?('.md')
        next if page.path.start_with?('_')

        # Skip special pages
        next if ['index.md', '404.md', 'navigation.md', 'search.md'].include?(page.path)

        # Check if the link is not already in the content
        unless page.content.include?('edit_page_link') || page.content.include?('Edit this page')
          # Append the include to the content
          page.content = page.content + "\n\n{% include edit_page_link.html %}"
        end
      end

      # Also process posts if any
      site.posts.docs.each do |post|
        next unless post.path && post.path.end_with?('.md')
        next if post.path.start_with?('_')

        unless post.content.include?('edit_page_link') || post.content.include?('Edit this page')
          post.content = post.content + "\n\n{% include edit_page_link.html %}"
        end
      end
    end
  end
end
