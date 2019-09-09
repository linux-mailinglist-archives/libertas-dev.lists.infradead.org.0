Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85382ADC9D
	for <lists+libertas-dev@lfdr.de>; Mon,  9 Sep 2019 18:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7r/925dreZNiS6uAgZsPpM6f54k94gS78bPRVHG2ytU=; b=jhhDf1fX8xubFQ
	o+uuItwjQzCZASi801R9OyeeHkyUoKKQv+waVsgoMaQ+zaNtXZNxE4Lq4BmSD8XUZqwAvJW9W6NnA
	WUv3EEW0WEiqeWIM1Rl6QtEiehmrWvT8aZ+OKk8fX0zTw1z9FbJtTtoj2Do4FoL5f6kkLs18Rypb1
	2/PGhYC+JvAKv7DshN4d3RUwNTOHf+tTfAgJ4RNdXDwR71xR6VjJ10uTD1Purnr0RKX1PLF4xmC3D
	CTIuPNwW9r/fA7Ek3uOFvrXCpozxyX8aR9DG+FZOG38S2jgVbikAZZqKdn+OIY9ocHZ7Vmq8g+v8L
	lB8HGG5RE0cDWGbt7jPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7M81-0000fa-52; Mon, 09 Sep 2019 16:02:57 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7M7w-0000ep-2B
 for libertas-dev@lists.infradead.org; Mon, 09 Sep 2019 16:02:53 +0000
Received: by mail-lj1-x241.google.com with SMTP id d5so13309702lja.10
 for <libertas-dev@lists.infradead.org>; Mon, 09 Sep 2019 09:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=ipy2yjXwL3M4s1ZSdk1XNUv/wxnrqS5xbdVx00ZM+POs9s+9VySUqGSzN2y+E4dcSK
 zl672jFll3NbvYBDxz68BbdmxHMB88o9jX1cVDmJvuhLNaLcipsgoYQWKnzNwHMMp27p
 jePQh01MVhE3cnW/1Vefwp89nhKjU7nDvNlmcrOxZjKsfLPelhHTzZqP966PRug7weuc
 EAOUk2m0jFXReOsi91wdEYxrb4q1rHSAOKfFT3kx7JAXmJ38W+1fcbTQt/QyD83cbC4K
 RR4VPXe2RwzpD8S7rKf00G0TjVgkBKmShtNtLw9HwLmquWSgHVJIsFOjy6o/8loB6Yu/
 htSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=EbAVlSZW4xVZKl2iljdFc8KPAu0wXQOEHtM7emsrs6zr5ggtVd5nrM0VntegFUNJW7
 yb0cb56Om7scCZAMIhjeVuEOgSRze74LhnIWDQLT+b/8Jg3E8wCPz+7IWU0EjEvt/nD/
 VXNVmLIFPB7h4I4Wj4kNgg4LN3ticadbbNHR1kFtN8EsAZnJ6HCfNs2rUmS+e6322u09
 FoJCOy71u0Tj23QyrXBQ2BICWNQw9hjYhzzewUPreE5XRsT56JiAcPXzxL7v552rYn8W
 qe+QURMvEhJHjYnLlquvXx8F4b18AGk6hZQS8bcAY7Phrn28I12m8WfEatE3EveUXsmC
 eQTw==
X-Gm-Message-State: APjAAAV7YvvBrS/I/qqKUPVNFcFDn2/QkpyzAbvPxX4q2wLUEwveXyKV
 Dkw+jKafMBcaL6jEgG6kNCLZMgOvhK45496xWsRC/g==
X-Google-Smtp-Source: APXvYqwSkWgwpVNf7xe1epXdrbWvhuJQPTQLjOr2S6FBRFySKjdPWoGdu19IHPLuhrZyNq72bnBbP0jHPykd/39uUkY=
X-Received: by 2002:a2e:6586:: with SMTP id e6mr15545185ljf.115.1568044967828; 
 Mon, 09 Sep 2019 09:02:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:741a:0:0:0:0:0 with HTTP;
 Mon, 9 Sep 2019 09:02:47 -0700 (PDT)
From: ken morgan <kenmorganlawhouse5050@gmail.com>
Date: Tue, 10 Sep 2019 05:02:47 +1300
Message-ID: <CAO+8Tfz316U0FiRGjQvmZ2Wgz93rJQ38HJFuEFo6iDzeC0VLww@mail.gmail.com>
Subject: Hello my dear i am Ken Morgan i have a fund transaction worth 15.5
 million US dollars that i want to discuss with you kindly get back to me for
 more details?
To: libertas-dev@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_090252_136067_C0F12C36 
X-CRM114-Status: UNSURE (  -1.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (kenmorganlawhouse5050[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kenmorganlawhouse5050[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: kenmorganlawhouse@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org



_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
