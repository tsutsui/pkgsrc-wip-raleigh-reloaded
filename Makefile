# $NetBSD$

DISTNAME=	raleigh-reloaded-1.3
PKGNAME=	raleigh-reloaded-theme-1.3
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=vlastavesely/}
GITHUB_PROJECT=	${DISTNAME:S/-${PKGVERSION_NOREV}//}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	tsutsui@NetBSD.org
HOMEPAGE=	https://github.com/vlastavesely/raleigh-reloaded
COMMENT=	GTK-3.20 theme aiming to revive the classic Raleigh theme
LICENSE=	gnu-gpl-v2

NO_BUILD=		yes

THEMENAME=		Raleigh-Reloaded
INSTALLATION_DIRS+=	share/themes/${THEMENAME}

do-install:
	cd ${WRKSRC}/src && \
	    pax -rwpp -s '/.*\.orig//' . ${DESTDIR}${PREFIX}/share/themes/$(THEMENAME)/

.include "../../mk/bsd.pkg.mk"
