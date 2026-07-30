add_cus_dep('asy', 'pdf', 0, 'asymptote');

sub asymptote {
  system("asy \"$_[0]\"");
}
