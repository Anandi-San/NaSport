import 'package:flutter/material.dart';
import 'package:papb_aplication/presentation/widgets/component.dart';
import 'package:papb_aplication/presentation/widgets/team.dart';

class ListKlasmen extends StatelessWidget {
  final String images;
  final String teamName;
  final String mp;
  final String W;
  final String D;
  final String L;
  final String pts;

  const ListKlasmen({
    super.key,
    required this.mp,
    required this.images,
    required this.teamName,
    required this.W,
    required this.D,
    required this.L,
    required this.pts,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10,),
      child: Row(
        children: [
          ContainerTeam(
            images: images,
            teamName: teamName,
          ),
          const Spacer(),
          Row(
            children: [
              ContainerNumber(number: mp),
              const SizedBox(
                width: 12,
              ),
              ContainerNumber(number: W),
              const SizedBox(
                width: 12,
              ),
    
              ContainerNumber(number: D),
              const SizedBox(
                width: 12,
              ),
    
              ContainerNumber(number: L),
              const SizedBox(
                width: 12,
              ),
    
              ContainerNumber(number: pts),
              const SizedBox(width: 12,),
            ],
          )
        ],
      ),
    );
  }
}
