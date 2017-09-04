CONFIGURATION=release
RUNTIME=netcoreapp2.0
OUTPUT=../bin/${CONFIGURATION}/${RUNTIME}/publish/
pushd ..
dotnet publish -c ${CONFIGURATION}
popd

