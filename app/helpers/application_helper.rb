# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def image_new
    image_tag('add.png', :title => 'New', :align=>"left")
  end

  def image_edit
    image_tag('edit.png', :title => 'Edit', :align=>"left")
  end

  def image_delete
    image_tag('delete.png', :title => 'Delete')
  end

  def image_show
    image_tag('show.png', :title => 'Show')
  end

  def image_list
    image_tag('list.png', :title => 'List')
  end

  def image_clone
    image_tag('copy.png', :title => 'Clone')
  end

  def image_attack
    image_tag('attack.png', :title => 'Attack')
  end

  def image_attack2
    image_tag('attack2.png', :title => 'Attack')
  end

  def image_present
    image_tag('house.png', :title => 'Make Present')
  end

  def link_to_edit(target)
    if target.monster? 
      link_to(image_edit, edit_monster_path(target))
    else
      link_to(image_edit, edit_character_path(target))
    end
  end

  def link_to_present_individual(target)
    link_to(image_present, present_monster_url(target), :method => :post) unless target.group.present?
  end

  def link_to_present_group(group)
    link_to(image_present, present_group_url(group), :method => :post) unless group.present?
  end

end
