using Gtk

using Libdl

for lib in dllist()
    println(lib, ":")
    try
        run(`otool -L $(lib)`)
    catch
    end
end
