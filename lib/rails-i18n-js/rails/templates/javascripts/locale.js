function translate( key, options ) {
  options = options || {};
  return __locale[key] || options.default;
}