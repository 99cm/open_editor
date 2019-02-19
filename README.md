# Open Editor

This extension provides an inline rich-text editor for Open. It implements a rich text editor like [TinyMCE][1].

Please note that this extension is just a simple integration of some pretty complex gem: [`tinymce-rails`][2], if you have issues, please check their issues trackers first.

It's best to use with [Open Essential Content][3]. 

---

1. Add Open Editor gem to your Gemfile with this line:
  ```ruby
  gem 'open_editor', github: '99cm/open_editor', branch: 'master'
  ```

2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Copy & run migrations
  ```ruby
  bundle exec rails g open_editor:install
  ```

4. Restart your server

  If your server was running, restart it so that it can find the assets properly.

---

## Configuration

Preferences can be updated within the admin panel under "configuration" then "rich editor".

Or you may set them with an initializer within your application:

```ruby
SpreeEditor::Config.tap do |config|
  config.ids = 'product_description page_body event_body'

  # change the editor to CKEditor
  config.current_editor = 'CKEditor'
end
```

The default preference is:

```ruby
{
  enabled: true,
  current_editor: 'TinyMCE',
  ids: 'product_description page_body'
}
```

---

## Language-Support

To obtain support for multiple languages with TinyMCE add tinymce-rails-langs to your Gemfile:

```ruby
gem 'tinymce-rails-langs'
```

TinyMCE will not be loaded unless it finds a language package matching your `Spree::Config.default_locale`.

---

Copyright (c) 2019 [Leo Wang][4] and other [contributors][5], released under the [New BSD License][6]

[1]: http://www.tinymce.com
[2]: https://github.com/spohlenz/tinymce-rails
[3]: https://github.com/99cm/open_essential_content
[4]: https://github.com/99cm
[5]: https://github.com/99cm/open_editor/graphs/contributors
[6]: https://github.com/99cm/open_editor/blob/master/LICENSE.md