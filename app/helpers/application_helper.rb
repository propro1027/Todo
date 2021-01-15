module ApplicationHelper
    # カスタムヘルパー　2.9
    def full_title(page_name="")
        base_title="Todo"
        if page_name.empty?
            base_title
        else
             page_name + " | " + base_title
        end
    end
end
