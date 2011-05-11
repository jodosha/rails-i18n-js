function translate( key, options ) {
  options = options || {};
  return __locale[key] || options.default;
}

function t( string ){
  function ta( parts, object ){
    object = ( object || __locale )[parts.shift()];
    return parts.length == 0 ? object : ta( parts, object );
  }

  return ta( string.split( "." ) );
}
