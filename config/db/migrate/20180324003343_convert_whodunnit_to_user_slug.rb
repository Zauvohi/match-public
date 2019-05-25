class ConvertWhodunnitToUserSlug < ActiveRecord::Migration[5.1]
  def up
    PaperTrail::Version.where('whodunnit is not null').all.map do |v|
      actor = User.where(id: v.whodunnit.to_i).first
      if actor
        puts "convert #{v.whodunnit} to #{actor.slug}"
        v.update(whodunnit: actor.slug)
      end
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
