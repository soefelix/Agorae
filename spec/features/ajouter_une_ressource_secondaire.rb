require 'spec_helper'

feature 'Enrichir son profil avec des ressources secondaires' do

  scenario 'ajouter une référence' do
      visit $home_page
      click_on 'Se connecter'
      log_in_as 'alice', 'lapinblanc'
      click_on_link 'Etudiant'
      click_on_link 'Baptiste BAINIER'
      toggle_edit
      click_plus_sign_next_to 'local-resource'
      fill_in 'attributename', :with => 'Guillaume DOYEN(referent)'
      fill_in 'attributevalue', :with => 'http://guillaume-doyen.fr'
      click_on 'Référencer'
    end
end
