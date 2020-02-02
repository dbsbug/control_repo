node default {
  file {'/root/README':
    ensure   => file,
    content  => 'This is a readme',
    owner    => 'root',
  }
  mod 'simp-simp_banners', '0.1.2'
}
