# README

This README file is my definition of Rails ActiveRecord::DelegatedType.

Rails provides different methods to create class relationships or associations including belongs_to, has_one, has_many, has_many :through, and has_and_belongs_to_many. In addition, Rails includes Polymorphic associations, Self Joins, Single Table Inheritance, and Delegated Types. 

**Polymorphic Associations** allows a model to belong to (belongs_to) multiple models through a polymorphic join (classable_id and classable_type) fields rather than through the primary id. An example is having a Image class belongs to Employee, Product and Blog classes. This allows you to retrieve images for Employee (@user.images) or Product (@product.images).

**accepts_nested_attributes_for** is available for **delegated_type** associations (see this [PR](https://github.com/rails/rails/pull/41717)) This replaces writing specific methods like:

```
class Entry < ApplicationRecord
  delegated_type :entryable, types: %w[ Message Comment ]

  def self.create_with_comment(content, creator: Current.user)
    create! entryable: Comment.new(content: content), creator: creator
  end
end
```
with:
```
class Entry < ApplicationRecord
  delegated_type :entryable, types: %w[ Message Comment ]
  accepts_nested_attributes_for :entryable
end

params = { entry: { entryable_type: 'Comment', entryable_attributes: { content: 'Smiling' } } }
entry = Entry.create(params[:entry])
```


