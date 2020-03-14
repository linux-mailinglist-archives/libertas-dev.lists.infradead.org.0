Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904F518550A
	for <lists+libertas-dev@lfdr.de>; Sat, 14 Mar 2020 08:24:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:Date:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5CXSx8KazYncGCrvbnEdzrkUhss0e79RUnWFSNJfdWY=; b=uFE/DuNTUGopVR
	qFCukvFq4UE3DKM7IdrdYUWxjfcDz6962VkRQXQFTSeyw8c/hQTsfeK7q3GUVxTDUcnqUfTfs9DvV
	tT5OUywKUwltagTMhd1giEZiRWoQIbhg8kyWDYZNh0Oz32x2j07ZfC8brHW7gwPiWJew5lt5Aki6i
	dFLjSwB0JdbwUQJ6icWqhTTN7pfPgV74Rkyx1xR1EzOvbcaEegIIRK5uwr2FVYkoZW3Q1h3ywC7Qz
	kBhT3Rtj0RT283L+c2IU3I2od4hvnIKZMWQSYG1kR/e7bv92Pd0LXkJhbahtaCupSTvAF0NN/xPzL
	W9rHRX08ItvZrw2JyJGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD19P-0006Mn-N0; Sat, 14 Mar 2020 07:24:03 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD19L-0006MM-TV
 for libertas-dev@lists.infradead.org; Sat, 14 Mar 2020 07:24:01 +0000
Received: by mail-qv1-xf29.google.com with SMTP id h20so2066673qvr.12
 for <libertas-dev@lists.infradead.org>; Sat, 14 Mar 2020 00:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:date:message-id:user-agent:subject:mime-version
 :content-transfer-encoding;
 bh=uqgp9nq2P7ZvRxCwQrBR0MxjxUJHBBP/7Pn7hq62CqI=;
 b=gQ2fCYoxcwh/FIl8gLcLMLNxQ/TRKQc/xNwdzdcjelZWNXDAAr6H+FsfxBYpEJJOEE
 t0R70ZC7NTOVpD+5NRNMNJEDK5fvgVkwUCHxN1a5VHptAkv6w2Q+ESoFgp+QEeHbcsU+
 vx+/QNLaJIlg6ve11OXtrh/uFvFCVyr4GTXXoteePzT7QX+rF6toi7d72S156+ir9X6z
 FzegXMWC5hwScWKT6VuTEzGnBfBXvGN5j88H9QUhEtj9Tcy4/vrZb80NDIVvCb+fKLTh
 1Yyc5ngpd0ad+JWkEiGiRcv0+MwHSya5aOjdu8gVggwHd/nK2Tw1WfPlxK6a+F2QCBIK
 dm3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:date:message-id:user-agent:subject
 :mime-version:content-transfer-encoding;
 bh=uqgp9nq2P7ZvRxCwQrBR0MxjxUJHBBP/7Pn7hq62CqI=;
 b=pwpDooIsOl+buXQefRPJrk8TxOwlYmpWS9hkdphlNZo1+iGp2jIRhu/wkX3d/SE07m
 c7u20VjvEmV3SP1sG4KlHYefBNxREnH2j6QhH88XIpQh1txqNVfXPN+w49bzkaCGTK/6
 B/1bnJ9mTNXzuJErQC+8LygNl6Bm22SqnLCjunh7uSscMHebl7aDgtSzCeaaZ2ZfFadi
 vymbo7KC0gHpDKTD3AsiGpO5YK5EvpD8iFG1FW+rCKX4TRXaBjHlfjdU6PPuF4BBIzfj
 bFZhbz8nRWkO2NrCaabKiP5LgY103QJN0Dt7R89ND5z1PkXGRcl9rsS11ld3K67TfZN6
 dGMA==
X-Gm-Message-State: ANhLgQ33S/GS3mqdcWumzquhP1urDy18uAK0d0zG8X1MYep+SwHk8CIm
 5RbsMr36LCFyQGStpUyiAg9NAnm/qyCp9w==
X-Google-Smtp-Source: ADFU+vu2ZNrPooylFNoXSJi1cKZkDjcJuSrw+0NoKNr1hNm9uo9M+N6Ao+ZKys6pqIipilZwGvlL8A==
X-Received: by 2002:ad4:4766:: with SMTP id d6mr14940458qvx.136.1584170637362; 
 Sat, 14 Mar 2020 00:23:57 -0700 (PDT)
Received: from [192.168.1.70] (108-78-23-185.lightspeed.nworla.sbcglobal.net.
 [108.78.23.185])
 by smtp.gmail.com with ESMTPSA id n46sm16346218qtb.48.2020.03.14.00.23.56
 for <libertas-dev@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Mar 2020 00:23:57 -0700 (PDT)
From: JAMES CALLOWAY HORRIBLE MAN <jamescalloway63@gmail.com>
X-Priority: 1
To: <libertas-dev@lists.infradead.org>
Date: Sat, 14 Mar 2020 02:23:45 -0500
Message-ID: <170d7ed67e8.28ce.3dc35c28f12025f774c80a532951f58e@gmail.com>
User-Agent: AquaMail/1.23.0-1556 (build: 102300002)
Subject: 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_002359_951607_717F51B6 
X-CRM114-Status: UNSURE (   1.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f29 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jamescalloway63[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jamescalloway63[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 TVD_SPACE_RATIO        No description available.
X-BeenThere: libertas-dev@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <libertas-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/libertas-dev>,
 <mailto:libertas-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/libertas-dev/>
List-Post: <mailto:libertas-dev@lists.infradead.org>
List-Help: <mailto:libertas-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/libertas-dev>,
 <mailto:libertas-dev-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org


Sent with AquaMail for Android
https://www.mobisystems.com/aqua-mail



_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
