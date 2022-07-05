module ApplicationHelper
  def document_title
    if @title.present?
      "#{@title} | サンプルECサイト"
    else
      'サンプルECサイト'
    end
  end
end
