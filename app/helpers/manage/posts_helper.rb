module Manage::PostsHelper
  def post_state(state)
    case state
    when 'publish'
      status = %Q(<span class="label label-success">已發佈</span>)
    when 'unpublish'
      status = %Q(<span class="label label-warning">已下架</span>)
    when 'draft'
      status = %Q(<span class="label label-info">草稿</span>)
    end
    status
  end

  def post_state_event(post)
    result = ''
    if post.can_confirm_publish?
      result += link_to '上架',
                transition_manage_post_path(post, event: "publish"),
                :class => 'btn btn-mini btn-success'
    end
    if post.can_confirm_unpublish?
      result += link_to '下架',
                transition_manage_post_path(post, event: "unpublish"),
                :class => 'btn btn-mini btn-warning'
    end
    result
  end
end
