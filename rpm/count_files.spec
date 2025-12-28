Name:           count-files
Version:        1.0
Release:        1%{?dist}
Summary:        Script to count files in /etc
License:        MIT
URL:            https://github.com/muradov-pi231/SPAiOS
Source0:        %{name}-%{version}.tar.gz
BuildArch:      noarch
Requires:       bash coreutils findutils

%description
A Bash script that counts the number of files
in the /etc directory, including directories and symbolic links.

%prep
%setup -q

%build

%install
mkdir -p %{buildroot}%{_bindir}
install -m 755 count_files.sh %{buildroot}%{_bindir}/count_files

%files
%{_bindir}/count_files

%changelog
* Thu Dec 25 2025 Arsen Muradov <arsenmuradov958@gmail.com> - 1.0-1
- Initial package release
