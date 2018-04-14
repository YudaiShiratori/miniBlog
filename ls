
[1mFrom:[0m /home/vagrant/workspace/miniBlog/app/controllers/miniblogs_controller.rb @ line 14 MiniblogsController#create:

    [1;34m12[0m: [32mdef[0m [1;34mcreate[0m
    [1;34m13[0m:   @miniblog = [1;34;4mMiniblog[0m.new(blog_param)
 => [1;34m14[0m:   binding.pry
    [1;34m15[0m:   [32mif[0m @miniblog.save
    [1;34m16[0m:     redirect_to miniblogs_path, [35mnotice[0m:[31m[1;31m"[0m[31m投稿しました！[1;31m"[0m[31m[0m
    [1;34m17[0m:   [32melse[0m
    [1;34m18[0m:     render [31m[1;31m'[0m[31mnew[1;31m'[0m[31m[0m
    [1;34m19[0m:   [32mend[0m
    [1;34m20[0m: 
    [1;34m21[0m: [32mend[0m

