ThinkingSphinx::Index.define :article, :with => :active_record do
  
  indexes title, :sortable => true
  indexes content
  indexes author, :sortable => true

  has created_at, updated_at
end