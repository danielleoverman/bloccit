module PostsHelper

   def user_is_authorized_delete_post?(post)
        current_user && (current_user == post.user || current_user.admin?)
   end    

   def user_is_authorized_to_create_update_post? (post)
        current_user && (current_user == post.user || current_user.admin? || current_user.moderator?)
    end
    
end
