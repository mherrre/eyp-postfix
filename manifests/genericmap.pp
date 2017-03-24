define postfix::genericmap(
                            $to,
                            $from = $name,
                            $order             = '55',
                          ) {

  concat::fragment{ "${postfix::smtp_generic_maps} ${from} ${to}":
    target  => $postfix::smtp_generic_maps,
    order   => $order,
    content => template("${module_name}/generic_map.erb"),
  }
}
