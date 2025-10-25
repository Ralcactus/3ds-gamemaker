function get_folder_name(_path)
{
    var last_backslash = string_last_pos(_path, "\"");
    var last_forwardslash = string_last_pos(_path, "/");
    var pos = max(last_backslash, last_forwardslash);
    
    if (pos <= 0) return _path; // no slash found, just return the whole thing
    
    return string_delete(_path, 1, pos);
}

