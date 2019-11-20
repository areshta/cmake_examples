#!/bin/bash

echo "foo.cpp generation"
echo -e "#include \"foo.hpp\" \nvoid foo()\n{\n   cout << \"foo\" << endl;\n}" > ../src/foo/foo.cpp
