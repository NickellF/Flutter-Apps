part of '../page.dart';

class _ItemSection extends StatelessWidget {
  const _ItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.defaultSize),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Dimens.dp8),
                child: Image.network(
                  'https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/c82992c0-5fd7-4ad3-84f7-28f24a3a7f45/width=450/hanni-v0,5-xl%20(2).jpeg',
                  width: 74,
                  height: 74,
                  fit: BoxFit.cover,
                ),
              ),
              Dimens.dp12.width,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegularText.semiBold('Hanni NewJeans'),
                    Dimens.dp4.height,
                    RegularText.semiBold('Ga dijual'),
                  ],
                ),
              ),
            ],
          ),
          Dimens.dp16.height,
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Edit'),
                ),
              ),
              Dimens.dp16.width,
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Delete'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
