module UsersHelper

  def new_or_edit_user
    if action_name == "new"
      "アカウント作成"
    elsif action_name == "edit"
      "アカウント編集"
    end
  end
end
