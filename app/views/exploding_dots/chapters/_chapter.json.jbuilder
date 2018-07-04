# frozen_string_literal: true

json.extract! chapter, :id, :number, :name, :created_at, :updated_at
if chapter.teaching_quide
  json.teaching_guide_url chapter.teaching_quide.url
  json.teaching_guide_preview_url chapter.teaching_quide.preview.try :url
end
if chapter.handout
  json.handout_url chapter.handout.url
  json.handout_preview_url chapter.handout.preview.try :url
end
json.url exploding_dots_chapter_url(chapter, format: :json)
