# 字里行间

一个用于UI练手的Flutter项目

## 项目UI设计图

来源：[Dribbble](https://dribbble.com/shots/14856637-Bookstore-Mobile-App-Exploration/attachments/6566629?mode=media)

<img src="https://cdn.dribbble.com/users/5160402/screenshots/14856637/media/265e4b6b80fbd274118728894921aab1.jpg" alt="设计图" style="zoom: 50%;" />

## APP运行时截图



# Discover页面

- TabBar样式
  - 使用awesome_tab_bar为容器，每一个page都嵌套了一个horizontal_gallery，而gallery的child为book_card
- You might like样式
  - 使用awesome_recommend_gallery为载体，这个组件其实就是将普通的ListView加了一个分隔线, 而每个child是一个recommend_card



<img src="/imgShow/discover.jpg" alt="Discover" style="zoom:33%;" />



# Search页面

- 布局相对简单，Search页面代码未变动，请自行查看 pages/search



<img src="/imgShow/search.jpg" alt="search" style="zoom:33%;" />



# Favorite页面

- 布局简单， 只用到了一个builder_grid_view + book_card的组合

<img src="/imgShow/favorite.jpg" alt="favorite" style="zoom:33%;" />



# BookDescription页面

- 代码被保留到pages/book_description中，在view页面查看

<img src="/imgShow/detail.jpg" alt="description" style="zoom:33%;" />



## 仿到梦空间 世界 列表项样式

### 原图

<img src="./imgShow/daomeng_source.jpg" alt="原图" style="zoom:33%;" />



### APP中组件

- 中间的大图可以自定义组件, 如: 
  - 视频
  - 图片
  - 文章链接
  - 等等...



<img src="./imgShow/daomeng_current.jpg" alt="APP" style="zoom: 33%;" />