#[控制器](http://codeigniter.org.cn/user_guide/general/controllers.html)

###控制器是应用程序的心脏，因为它们决定如何处理 HTTP 请求

它是一个类。命名与URI关联。

支持传递[方法](http://codeigniter.org.cn/user_guide/general/controllers.html#functions)

[传递URI的片段给方法](http://codeigniter.org.cn/user_guide/general/controllers.html#passinguri)

#[视图](http://codeigniter.org.cn/user_guide/general/views.html)

###一个视图就是一个网页，或是网页的部分，如头部，底部，侧边栏等。视图可以很灵活的嵌入到其他视图中

###创建一个视图

放在application/views/文件夹下，然后在新建的控制器里$this->load->view('myview')调用它，可以同时载入多个。


###获取视图内容


view函数第三个可选参数可以改变函数的行为，让数据作为字符串返回而不是发送到浏览器。如果想用其它方式对数据进一步处理，这样做很有用。如果将view第三个参数设置为true（布尔）则函数返回数据。view函数缺省行为是false,　将数据发送到浏览器。如果想返回数据，记得将它赋到一个变量中。

  ` $string = $this->load->view('myfile', '', true);
