#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


cd /usr/lib/vmware/modules/source
tar -xf vmnet.tar
tar -xf vmmon.tar
cd vmnet-only/
gedit userif.c

FROM  line 113

#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 6, 0)
    retval = get_user_pages(addr, 1, 1, 0, &page, NULL);
#else
    retval = get_user_pages(current, current->mm, addr,
                1, 1, 0, &page, NULL);
#endif


to

#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
     retval = get_user_pages(addr, 1, 0, &page, NULL);
#else
#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 6, 0)
     retval = get_user_pages(addr, 1, 1, 0, &page, NULL);
#else
     retval = get_user_pages(current, current->mm, addr,
                 1, 1, 0, &page, NULL);
#endif
#endif


cd ..
cd vmmon-only/linux/
gedit hostif.c


FROM line 1162

#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 6, 0)
   retval = get_user_pages((unsigned long)uvAddr, numPages, 0, 0, ppages, NULL);
#else
   retval = get_user_pages(current, current->mm, (unsigned long)uvAddr,
                           numPages, 0, 0, ppages, NULL);
#endif



to 


#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
   retval = get_user_pages((unsigned long)uvAddr, numPages, 0, ppages, NULL);
#else
#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 6, 0)
   retval = get_user_pages((unsigned long)uvAddr, numPages, 0, 0, ppages, NULL);
#else
   retval = get_user_pages(current, current->mm, (unsigned long)uvAddr,
                           numPages, 0, 0, ppages, NULL);
#endif
#endif






cd ..
cd ..
tar -cf vmnet.tar vmnet-only
tar -cf vmmon.tar vmmon-only



##################################################################################################################

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"


