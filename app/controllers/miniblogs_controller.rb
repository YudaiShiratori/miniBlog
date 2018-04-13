class MiniblogsController < ApplicationController
   before_action :blog_param, only [:show, :edit, :update, :destroy]

   def index
     @miniblogs = miniblog.all
   end

   def new
     @miniblog = miniblog.new
   end

   def create
     miniblog.create(blog_param)

     if @miniblog.save
       redirect_to miniblogs_path, notice:"投稿しました！"
     else
       render 'new'
     end

   end

   def show
     @miniblog = miniblog.find(params[:id])
   end

   def edit

   end

   def update
     if @miniblog.save
       redirect_to miniblogs_path, notice:"更新しました！"
     else
       render 'new'
     end
   end

   def destroy
       @miniblog.destroy
       redirect_to miniblogs_path, notice:"削除しました！"
   end

   private

   def set_blog
     @miniblog = miniblog.find(params[:id])
   end

   def blog_params
     params.require(:miniblog).permit(:name,:text)
   end





end
