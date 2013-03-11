# Main function

* album has many images
* User can upload images to album
* User can create album
* Friend can check album
* with carriewave as uploader

```ruby
u = User.new
u.avatar = params[:file]
u.avatar = File.open('somewhere')
u.save!
u.avatar.url # => '/url/to/file.png'
u.avatar.current_path # => 'path/to/file.png'
u.avatar.identifier # => 'file.png'
```

# thumb 

```ruby
class MyUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  process :resize_to_fit => [800, 800]

  version :thumb do
    process :resize_to_fill => [200,200]
  end

end
```

# view

```ruby
<%= form_for @user, :html => {:multipart => true} do |f| %>
  <p>
    <label>My Avatar</label>
    <%= image_tag(@user.avatar_url) if @user.avatar? %>
    <%= f.file_field :avatar %>
    <%= f.hidden_field :avatar_cache %>
  </p>
<% end %>
```

# also use cancan devise twitter bootstrap

