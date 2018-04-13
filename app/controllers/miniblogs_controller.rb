class MiniblogsController < ApplicationController
   before_action :blog_param, only:[:show, :edit, :update, :destroy]

   def index
     @miniblogs = Miniblog.all
   end

   def new
     @miniblog = Miniblog.new
   end

   def create
     Miniblog.create(blog_params)

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
     if @miniblog.update(blog_params)
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
     @miniblog = Miniblog.new(blog_params)
     render :new if @miniblog.invalid?
   end

   private

   def set_blog
     @miniblog = Miniblog.find(params[:id])
   end

   def blog_params
     params.require(:miniblog).permit(:title,:content)
   end



end
