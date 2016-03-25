module ApplicationHelper
    def friendly_date(d)
        d.strftime("%B %e, %Y %H:%M")
    end
end
