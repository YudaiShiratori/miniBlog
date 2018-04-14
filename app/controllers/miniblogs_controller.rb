class MiniblogsController < ApplicationController
   before_action :set_blog, only:[:show, :edit, :update, :destroy]

   def index
     @miniblogs = Miniblog.all
   end

   def new
     if params[:back]
          Miniblog.new(blog_param)
     else
         @miniblog = Miniblog.new
     end
   end

   def create
     @miniblog = Miniblog.new(blog_param)

     if @miniblog.save
       redirect_to miniblogs_path, notice:"投稿しました！"
     else
       render 'new'
     end

   end

   def show
   end

   def edit
   end

   def update
     if @miniblog.update(blog_param)
       redirect_to miniblogs_path, notice:"更新しました！"
     else
       render 'edit'
     end
   end

   def destroy
       @miniblog.destroy
       redirect_to miniblogs_path, notice:"削除しました！"
   end

   def confirm
     @miniblog = Miniblog.new(blog_param)
     render :new  if @miniblog.invalid?
   end

   private

   def set_blog
     @miniblog = Miniblog.find(params[:id])
   end

   def blog_param
     params.require(:miniblog).permit(:title,:content)
   end


end
