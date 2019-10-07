headline 'ActiveStorage in the wild'

paragraph 'OR: Why you should not use new features in Rails'

paragraph 'Some context: 📸 📝 ✊ weg-li: 1, 2, 3 - Macht die Bahn frei!'

link 'secure bike lanes and free sidewalks', 'https://docs.google.com/presentation/d/16vYF2X0Kjqm2DpepYvUW0_PUvLBBUji2o_YdXjSMrUc/edit#slide=id.p'

headline 'SPOILER ALERT'

link 'weg-li will become Wegeheld 🎉', 'https://cyclehackberlin.de/'

headline 'weg-li how it works'

list [
  'take a photo on your phone 📸',
  'upload it through the webapp ☁️',
  'photo is analyzed, geocoding, ALPR etc 🤖',
  'charge sent to authorities via E-Mail ✉️',
]

headline '🚧  🚧  🚧   modern browser funfacts   🚧  🚧  🚧'

paragraph '🐞 datetime-local input field type not supported in firefox 🐞'

timer '⏱ precious audience time taken'

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

paragraph 'pretty much works out of the box'

code "
has_many_attached :photos

validates :photos, presence: :true
"

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

paragraph 'complicated, I told you so'

headline '🚧  🚧  🚧   modern browser funfacts   🚧  🚧  🚧'

paragraph '🐞 input field multi is broken in firefox for android 🐞'

link 'Thumbnails become even more complicated 🤯', 'https://guides.rubyonrails.org/active_storage_overview.html#transforming-images'

list [
  'ActiveStorage generates representation-URLs',
  'representation-URLs result in redirects with presigned-URLs',
  'Thumbnails/Previews are Variants',
  'Existance of Variants is checked and persisted/uploaded',
  'Variants are generated on the fly, ActiveStorage acts as a read-through cache',
  'Variant generation can be forces with .processed',
]

link 'Optimized for ActiveText', 'https://edgeguides.rubyonrails.org/action_text_overview.html'

list [
  'missing callbacks',
  'not suitable for many images',
  'many HTTP calls',
  'bad for caching',
  'hard to orchestrate',
]

headline '🚧  🚧  🚧   modern browser funfacts   🚧  🚧  🚧'

paragraph '🐞 iOS strips EXIF metadata before uploading (maybe) 🐞'

timer '⏱ precious audience time taken'

headline 'hacking ActiveStorage 💀'

link 'ImageAnalyzer', 'https://github.com/rails/rails/blob/66cabeda2c46c582d19738e1318be8d59584cc5b/activestorage/lib/active_storage/analyzer/image_analyzer.rb#L20'
link 'EXIF analyzer', 'https://github.com/weg-li/weg-li/blob/7fea19f4906c20c46aa5dd3726367b228b757ed4/app/lib/exif_analyzer.rb'
link 'Initializer', 'https://github.com/weg-li/weg-li/blob/master/config/initializers/active_storage.rb'
link 'WIP Thumbnailer, Streamliner', 'https://github.com/weg-li/weg-li/pull/79/files'

headline 'mature alternatives 💯'

list [
  'shrine',
  'carrierwave',
  'dragonfly',
  'paperclip (deprecated)',
]

paragraph 'TLDR: opinionated AKA works for basecamp'
