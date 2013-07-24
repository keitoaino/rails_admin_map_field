Rails Admin Map Field
=====================

rails_admin_map_field is a gem that works with sferik's **rails_admin** (https://github.com/keitoaino/rails_admin) to provide an easy to use Google Maps interface for displaying and setting geographic co-ordinates in a model.

Where a latitude and longitude is set on the model, it is indicated by a marker shown on a Google map centered at the marker. The administrator can change the value of these fields by clicking on the desired new location on the map.

Usage
=====

rails_admin_map_field expects that the model will have two attributes, one for latitude and one for longitude of the point represented. To enable rails_admin_map_field, add the following to your `Gemfile`:

```ruby
gem 'rails_admin_map_field'
```

or directly from Github repo:

```ruby
gem 'rails_admin_map_field', git: 'git://github.com/keitoaino/rails_admin_map_field.git'
```

Then, add in your `config/initializers/rails_admin.rb` initializer:

```ruby
RailsAdmin.config do |config|
  config.model User do
    edit do
      field :address, :map
    end
  end
end
```

**Note**: The field which is set as a map-type field must be the address field.

LICENSE
=======
rails_admin_map_field is licensed under the GPLv3 license.

Copyright (C) 2011 by Jason Langenauer

Copyright (C) 2013 by Keito Aino

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
