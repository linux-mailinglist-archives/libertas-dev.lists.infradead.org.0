Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6BE635ED
	for <lists+libertas-dev@lfdr.de>; Tue,  9 Jul 2019 14:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/osnfzubA5owudb7PkGYXsK/6AVZuIOL46Hf/YZiHUE=; b=OYXwn6JENqhhjG
	OSUPXQFLkBtUJ45sGiY2AuqkkS3DI7ZUjhvDVbM8AfJ1Q1HLy0NQMfga3SeG8Z8yFESu6Ap7Q3azn
	s2AvA5jXYMzZ04U9j6IFk/iTOEikkDIMdipN+pfzrV1lMurZolyiXOcBt/CPYOClEBY7UZUV2fXEA
	BK5skBpfv9o4fWtv2sIBDyVMtn5oKBDz6iBZj7gSawC9t3vkELrL7o/S8f5GungB6Q3zEhpFA2anA
	qNHFe8jYYiy9YkHJw9ti+WqwQWPLBZQlpbGjjdMQvp/Kzsq8MD5ZfvhI2PNwaRifsEV1kJ/PPAMwn
	JYrJkDaqVyWxQsGkI5pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpHW-0004Ng-J9; Tue, 09 Jul 2019 12:31:38 +0000
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpDC-0007yJ-I7
 for libertas-dev@lists.infradead.org; Tue, 09 Jul 2019 12:27:12 +0000
Received: by mail-io1-f70.google.com with SMTP id q26so14876395ioi.10
 for <libertas-dev@lists.infradead.org>; Tue, 09 Jul 2019 05:27:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=UZp0N+xOAAczyA3pZl0OsLZcXAkB435anjzhpRD0vtc=;
 b=qMq87w9QbMsxCwmAqXtlyt9RGn6CnNRLucRlibWnwX7+xvHBLA+844fYae2iGsU5ek
 SpOKwGuFqRUctGjhgJr4WrF8f0zl2EfPFN35Igx5+Omnhx+AXO/jR4m42E2Aj9QF5Jbk
 bO7dkAMwqCytbpi8TVBCOA+9oa+/YH920sinp1316JNITb0kdlY6oMzVx+zCfLSKs3zf
 4GX4U+ftWbqp0+fqd/vyPv/FLrzMzu9+SsRRianEsLE+mFYyuGTL/5/9u8KxYX0OXdYd
 UNjuGmwDgnx9aqvbLzh4YMQnQJPwKzl6E6Hm7+std2KkgfaWoE6HmcZu41moCqaYGK/3
 TwpQ==
X-Gm-Message-State: APjAAAU0h8bFyhAHPG7LXd7gOEVx0TaBSzjVDge7gyKt4Cqq5d20c6M+
 wYfZhj9HOlaV5lF6T5QLL9BVieJdj7B8Tf+XcKYrwCGOS9k7
X-Google-Smtp-Source: APXvYqwErajSFEr7tGtQtEfYiBupcBnj0BvRo16vOfzsOxFx8naQtm9prx+l7V6z9OJaad4fgSlPeKIF91YAWnZwqKoL1zjEypX+
MIME-Version: 1.0
X-Received: by 2002:a02:ab83:: with SMTP id t3mr27669942jan.133.1562675228114; 
 Tue, 09 Jul 2019 05:27:08 -0700 (PDT)
Date: Tue, 09 Jul 2019 05:27:08 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000df0913058d3ead47@google.com>
Subject: KASAN: global-out-of-bounds Read in load_next_firmware_from_table
From: syzbot <syzbot+98156c174c5a2cad9f8f@syzkaller.appspotmail.com>
To: andreyknvl@google.com, davem@davemloft.net, gregkh@linuxfoundation.org, 
 kvalo@codeaurora.org, libertas-dev@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
 syzkaller-bugs@googlegroups.com, tglx@linutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_052710_680141_2276F08E 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.3 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Hello,

syzbot found the following crash on:

HEAD commit:    7829a896 usb-fuzzer: main usb gadget fuzzer driver
git tree:       https://github.com/google/kasan.git usb-fuzzer
console output: https://syzkaller.appspot.com/x/log.txt?x=12fd0e9ba00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f6d4561982f71f63
dashboard link: https://syzkaller.appspot.com/bug?extid=98156c174c5a2cad9f8f
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=125f669ba00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=146b806ba00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+98156c174c5a2cad9f8f@syzkaller.appspotmail.com

usb 1-1: Direct firmware load for libertas/usb8388_v5.bin failed with error  
-2
usb 1-1: Direct firmware load for libertas/usb8388.bin failed with error -2
usb 1-1: Direct firmware load for usb8388.bin failed with error -2
==================================================================
BUG: KASAN: global-out-of-bounds in  
load_next_firmware_from_table+0x267/0x2d0  
drivers/net/wireless/marvell/libertas/firmware.c:99
Read of size 8 at addr ffffffff860942b8 by task kworker/1:1/21

CPU: 1 PID: 21 Comm: kworker/1:1 Not tainted 5.2.0-rc6+ #13
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Workqueue: events request_firmware_work_func
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0xca/0x13e lib/dump_stack.c:113
  print_address_description+0x67/0x231 mm/kasan/report.c:188
  __kasan_report.cold+0x1a/0x32 mm/kasan/report.c:317
  kasan_report+0xe/0x20 mm/kasan/common.c:614
  load_next_firmware_from_table+0x267/0x2d0  
drivers/net/wireless/marvell/libertas/firmware.c:99
  helper_firmware_cb+0xdc/0x100  
drivers/net/wireless/marvell/libertas/firmware.c:70
  request_firmware_work_func+0x126/0x242  
drivers/base/firmware_loader/main.c:785
  process_one_work+0x905/0x1570 kernel/workqueue.c:2269
  worker_thread+0x96/0xe20 kernel/workqueue.c:2415
  kthread+0x30b/0x410 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352

The buggy address belongs to the variable:
  fw_table+0x98/0x5c0

Memory state around the buggy address:
  ffffffff86094180: fa fa fa fa 00 04 fa fa fa fa fa fa 00 00 05 fa
  ffffffff86094200: fa fa fa fa 00 00 00 00 00 00 00 00 00 00 00 00
> ffffffff86094280: 00 00 00 00 00 00 fa fa fa fa fa fa 00 00 00 00
                                         ^
  ffffffff86094300: 00 00 00 01 fa fa fa fa 00 00 00 00 02 fa fa fa
  ffffffff86094380: fa fa fa fa 00 03 fa fa fa fa fa fa 00 00 00 00
==================================================================


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
