// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/builders/gridview_builder.dart';
import '../../data/model/services_data.dart';
import '../../data/model/services_model.dart';
import 'item_card.dart';

class ServiceGridList extends StatelessWidget
{
  const ServiceGridList({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomGridbuilder(
      itemBuilder: (_, index)
      {
        final serviceItem = servicesData[index];
        return GestureDetector(
          onTap: () {
            AppLogger.info(serviceItem.serviceScreen);
            AppRouter.router.pushNamed(serviceItem.serviceScreen);
          },
          child: ServiceItemCard(
            serviceImg: serviceItem.serviceImg,
            serviceName: serviceItem.serviceName,
          ),
        );
      }, 
      itemCount: servicesData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, mainAxisSpacing: (21.0).h,
        crossAxisSpacing: (13.0).w, childAspectRatio: (117.w / 116.h),
      ),
    );
  }
}