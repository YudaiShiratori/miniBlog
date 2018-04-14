module MiniblogsHelper

  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_miniblogs_path
    elsif action_name == 'edit'
      miniblog_path
    end
  end

end
