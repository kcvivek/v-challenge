Name:           hello-apache
Version:	1.0
Release:        1%{?dist}
Summary:  	Simple apche welcome page

License:	Apache 2.0
URL:		http://localhost/%{name}/license
Source0:	automation.tar.gz
BuildArch:      noarch
BuildRoot:      %{_tmppath}/%{name}-buildroot

BuildRequires:  info
Requires:	info

%description
This is a simple apache welcome page
The goal is to run the automation and be able
to browse to http://localhost to see the site
Source comes from /var/www/html

%prep
echo Building %{name}-%{version}-%{release}
%setup -q -n var

%install
rm -rf $RPM_BUILD_ROOT
#install -m 0755 -d %{buildroot}/%{_datadir}/
install -m 0755 -d %{buildroot}/var
cp -a * %{buildroot}/var/

%post
echo "Go under /var/www/html and verify files"
echo "Start apache on port 80 and browse: http://localhost"

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
/var/www/html/*

%changelog
* Sun Jul 02 2017 Vivek KC <kcvivek99 at gmail.com> - Release 1.0
- First rollout of the website

