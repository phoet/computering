headline 'ActiveStorage in the wild'

paragraph 'OR: Why you should not use new features in Rails'

link 'Some context: 📸 📝 ✊ weg-li: 1, 2, 3 - Macht die Bahn frei!', 'https://docs.google.com/presentation/d/16vYF2X0Kjqm2DpepYvUW0_PUvLBBUji2o_YdXjSMrUc/edit#slide=id.p'

headline 'weg-li how it works'

list [
  'take a photo on your phone 📸',
  'upload it through the webapp ☁️',
  'photo is analyzed, geocoding, ALPR etc 🤖',
  'charge is sent to authorities via E-Mail ✉️',
]

headline 'SPOILER ALERT'

link 'weg-li will become Wegeheld 🎉', 'https://cyclehackberlin.de/'

timer '⏱ precious audience time taken'

quote 'ok, lets talk about rails'

headline 'batteries included'

list [
  'ORM ✅',
  'E-Mail ✅',
  'Turbolinks ✅',
  'Asset-Management ✅',
  '✅ ✅ ✅ ✅',
  'ActiveStorage 💪',
]


headline 'lets just use ActiveStorage'

list [
  'AWS ✅',
  'GCloud ✅',
  'Filesystem ✅',
  '✅ ✅ ✅ ✅',
]

code "
# view
= form.file_field :attachments, multiple: true

# model
has_many_attached :photos
validates :photos, presence: :true
"

paragraph 'pretty much works out of the box'

link 'DirectUploads become more complicated 🤔', 'https://guides.rubyonrails.org/active_storage_overview.html#direct-uploads'

list [
  'DirectUploads fetches presigned upload-url of storage service and creates blob-IDs',
  'DirectUploads fills form-field with a blob ID',
  'DirectUploads sends XHR with file to storage service',
  'DirectUploads triggers callbacks',
  'DirectUploads triggers form submit',
  'ActiveStorage creates attachments from blob IDs for record',
  'ActiveStorage enqueues Jobs to analyze the blob',
]

quote 'complicated, I told you so'

headline '🚧  🚧  🚧   modern browser funfacts   🚧  🚧  🚧'
paragraph '🐞 input field multi is broken in firefox for android 🐞'

link 'Thumbnails become even more complicated 🤯', 'https://guides.rubyonrails.org/active_storage_overview.html#transforming-images'

list [
  'ActiveStorage generates representation-URLs',
  'representation-URLs result in redirects with presigned-URLs',
  'Thumbnails/Previews are Variants',
  'Existance of Variants is checked and persisted/uploaded',
  'Variants are generated on the fly, ActiveStorage acts as a read-through cache',
  'Variant generation can be forced with `.processed`',
]

link 'Optimized for ActiveText', 'https://edgeguides.rubyonrails.org/action_text_overview.html'

headline '🚧  🚧  🚧   modern browser funfacts   🚧  🚧  🚧'
paragraph '🐞 datetime-local input field type not supported in firefox 🐞'

headline 'DOWNSIDES, OR: Why you should not use new features in Rails'

list [
  'missing ar-callbacks',
  'not suitable for many images',
  'many HTTP calls',
  'bad for caching',
  'hard to orchestrate',
]
timer '⏱ precious audience time taken'

headline 'hacking ActiveStorage 💀'

link 'ImageAnalyzer', 'https://github.com/rails/rails/blob/66cabeda2c46c582d19738e1318be8d59584cc5b/activestorage/lib/active_storage/analyzer/image_analyzer.rb#L20'
link 'EXIF analyzer', 'https://github.com/weg-li/weg-li/blob/7fea19f4906c20c46aa5dd3726367b228b757ed4/app/lib/exif_analyzer.rb'
link 'Initializer', 'https://github.com/weg-li/weg-li/blob/master/config/initializers/active_storage.rb'
link 'WIP Thumbnailer, Streamliner', 'https://github.com/weg-li/weg-li/pull/79/files'

headline '🚧  🚧  🚧   modern browser funfacts   🚧  🚧  🚧'
paragraph '🐞 iOS strips EXIF metadata before uploading (maybe) 🐞'

headline 'mature alternatives 💯'

list [
  'shrine',
  'carrierwave',
  'dragonfly',
  'paperclip (deprecated)',
]

paragraph 'TLDR: opinionated AKA works for basecamp'
