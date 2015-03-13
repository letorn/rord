atom_feed do |feed|
  feed.title(@feed_title)
  feed.updated(@people.last.created_at)
  @people.each do |person|
    feed.entry(person) do |entry|
      entry.title(person.name)
      entry.content(person.bio, :type => 'html')
    end
  end
end
