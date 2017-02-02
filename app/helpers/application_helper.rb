module ApplicationHelper
  def title title
    content_for :title, title
  end

  def page_header
    render partial: 'layouts/page_header'
  end

  def flash_messages
    render partial: 'layouts/flash_messages'
  end

  def footer
    render partial: 'layouts/footer'
  end

  ###############################################
  # Alerts
  def bootstrap_class_for flash_type
    {
      success: 'alert-success',
      error: 'alert-danger',
      alert: 'alert-warning',
      notice: 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end
end
